const initStyles = () => {
  console.log("Style js loaded")
  initLoginPageStyles()
  initDashboardStyles()
}

const initLoginPageStyles = () => {
  if(window.location.pathname === '/admin/login'){
    console.log("Login styles have been loaded")
    const loginLabel = document.querySelector("#login h2")
    // loginLabel.innerHTML = `<img src="/images/logo-header.jpg" style="height: 150px"/>`
    const loginPageBackground = document.querySelector("#active_admin_content")
    const contentWrapper = document.querySelector("#content_wrapper")
    
    loginPageBackground.style.backgroundImage = 'linear-gradient(black, #00830b)'
    // loginPageBackground.style.backgroundImage = "url('/images/banner2.png')"
    loginPageBackground.style.backgroundRepeat = "no-repeat"
    loginPageBackground.style.backgroundSize = "100vw 100vh"
    loginPageBackground.style.backgroundSize = "cover"
    loginPageBackground.style.opacity = 0.95
    contentWrapper.style.backgroundImage = "url('/images/banner2.png')"
    contentWrapper.style.backgroundRepeat = "no-repeat"
    contentWrapper.style.backgroundSize = "cover"
  }
}

const initDashboardStyles = () => {
  const headerH2 = document.querySelector(".header h1")
  if(headerH2 !== null) {
      
    console.log({headerH2})
    headerH2.innerHTML = `
      <div style="display: flex;">
        <img src="/images/logo.png" style="height: 50px; padding-top: 4px; padding-left: 8px; margin: 0 !important"/>
        <p style="margin: 0; line-height: 18px; padding-top: 12px"></p>
      </div>
    `
  }
}