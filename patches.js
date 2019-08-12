window.addEventListener('load', () => {
  // move the Options and Support buttons to the "Input" heading
  let optionsBtn = document.querySelector('#options');
  let supportBtn = document.querySelector('#support');
  let target = document.querySelector('#input .title .float-right');
  optionsBtn.innerHTML = optionsBtn.innerHTML.replace('Options ', '');
  optionsBtn.parentNode.removeChild(optionsBtn);
  let optionsBtnWrap = document.createElement('button');
  optionsBtnWrap.setAttribute('class', 'btn btn-primary bmd-btn-icon');
  target.appendChild(optionsBtnWrap);
  optionsBtnWrap.appendChild(optionsBtn);
  supportBtn.innerHTML = supportBtn.innerHTML.replace('About / Support ', '');
  supportBtn.parentNode.removeChild(supportBtn);
  let supportBtnWrap = document.createElement('button');
  supportBtnWrap.setAttribute('class', 'btn btn-primary bmd-btn-icon');
  target.appendChild(supportBtnWrap);
  supportBtnWrap.appendChild(supportBtn);

  document.getElementById('banner').style.display = 'none';
  document.getElementById('workspace-wrapper').style.top = 0;
});