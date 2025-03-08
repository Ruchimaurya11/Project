
import React from "react";
import Home from "./Website/Pages/Home";
import { BrowserRouter, Route, Router, Routes } from "react-router-dom";
import Contact from "./Website/Pages/Contact";
import About from "./Website/Pages/About";
import Services from "./Website/Pages/Services";
import Dashboard from "./Admin/Apages/Dashboard";
// import Main from "./Website/Pages/Main";
// import Price from "./Website/Pages/Price";
// import Feature from "./Website/Pages/Feature";
// import Quote from "./Website/Pages/Quote";
// import Team from "./Website/Pages/Team"






function App() {
  return (
    <div className="App">
{/* <Home/> */}
<BrowserRouter>
<Routes>
<Route path="/" element={<><Home/></>} />
<Route path="/Contact" element={<><Contact/></>} />
<Route path="/About" element={<><About/></>} />
<Route path="/Services" element={<><Services/></>} />
{/* <Route path="/main" element={<><Main/></>}>
<Route path="/main/Price" element={<><Price/></>}/>
<Route path="/main/Feature" element={<><Feature/></>}/>
<Route path="/main/Quote" element={<><Quote/></>}/>
<Route path="/main/Team" element={<><Team/></>}/> */}




{/* </Route> */}








<Route path="/Dashboard" element={<><Dashboard/></>}/>
</Routes>

</BrowserRouter>
    
    </div>
  );
}

export default App;
 