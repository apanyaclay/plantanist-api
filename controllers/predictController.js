const db = require('../config/db-config');
const { generatePlantDiseaseDescription } = require('../services/textGenerate');

exports.predict = async (request, h) => {
  const { name, plant, accuracy, image } = request.payload;

  try {
    const description = await generatePlantDiseaseDescription(
      name,
      plant,
      accuracy
    );
    const sql = 'INSERT INTO diagnoses SET ?';
    const data = {
      user_id:request.user.uid,
      name,
      plant,
      accuracy,
      description,
      image,
    };
    const [result] = await db.promise().query(sql, data);
    return h.response({
      status: 'success',
      message: 'Data berhasil diambil',
      result: data,
    });
  } catch (error) {
    console.error(error);
    return h
      .response({
        status: 'fail',
        message: 'Internal Server Error',
      })
      .code(500);
  }
};
