function timeout(ms, callback) {
    return new Promise(function (resolve) {
      setTimeout(function () {
        resolve();
        callback();
      }, ms);
    });
  }

  const timeout2 = (ms = 1000) => new Promise((resolve)=>setTimeout(resolve, ms));

  function generateRandomNumber() {
    return Math.floor(Math.random() * 40);
  }
  const generateRandomNumber2 = ()=> Math.floor(Math.random() * 40);
  function generateData(callback) {
    timeout(1000, function () {
      const data = Array.from({ length: 20 }, generateRandomNumber);
      callback(data);
    });
  }

    const generateData2 = async () => {
      await timeout2(1000,()=>{});
      const data = Array.from({ length: 20 }, generateRandomNumber2);
      return data;
    }

  function convertToFeet(meters, callback) {
    const feet = meters * 3.2808;
    timeout(3500, function () {
      callback(feet);
    });
  }

   const convertToFeet2 = async (meters) => {
      const feet = meters * 3.2808;
      timeout2(3500, function () {
        callback(feet);
      });
      await timeout2(3500);
      logResult2(meters, feet)
    }

  function processData(data, callback) {
    data.map(function (value) {
      callback(value);
    });
  }

  //arrow function
  const processData2 = async (data) => {
    await Promise.all(data.map(value => convertToFeet2(value))); 
  }

  function logResult(meters, feet) {
    console.log(`Converted ${meters}m to ${feet}ft`);
  }
  //arrow function
  const logResult2 = (meters, feet) => {
    console.log(`Converted ${meters}m to ${feet}ft`);
  }
  const main = async () => {
    console.log("Start");
    generateData(function (data) {
      processData(data, function (value) {
        convertToFeet(value, function (result) {
          logResult(value, result);
        });
      });
    });
    const data = await generateData2()
    await processData2(data)
    console.log("Finish");
  }

  main();