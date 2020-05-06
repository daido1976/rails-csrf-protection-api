const createSession = async () => {
  const requestData = "hoge";
  const response = await fetch("/login", {
    method: "POST",
    // mode: "cors",
    body: JSON.stringify(requestData),
  });
  const responseData = await response.json();
  console.log(responseData);
};
