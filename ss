index.html
<h1>mikumikumiku</h1>
<h1>初音未来牛逼</h1>
<h1>miku</h1>
<h1>qq:3129711198</h1>
<h1>bilbil:超级无敌可爱米库</h1>
<style>
body {
  background-image: url("https://user49689.cn.imgto.link/public/20261031/f0dbac3f6a21c3a143317466-img-0028-2.avif");
  background-size: cover;
  background-position: center;
  background-repeat: no-repeat;
  background-attachment: fixed;
}
</style>
<!-- 播放按钮 -->
<button id="openBiliBtn">🎵 打开初音感谢祭</button>

<!-- 弹窗遮罩层 -->
<div id="biliModal" class="modal">
  <div class="modal-content">
    <span class="close-btn">&times;</span>
    <iframe id="biliPlayer"
      src="https://player.bilibili.com/player.html?bvid=BV1Qf4y1c758&danmaku=0"
      scrolling="no"
      frameborder="no"
      allowfullscreen>
    </iframe>
  </div>
</div>

<style>
/* 按钮样式，你可以自己改颜色大小 */
#openBiliBtn {
  padding: 12px 24px;
  font-size: 18px;
  background: #00a1d6;
  color: white;
  border: none;
  border-radius: 8px;
  cursor: pointer;
}
#openBiliBtn:hover {
  background: #0088b4;
}

/* 弹窗遮罩，盖住整个页面 */
.modal {
  display: none; /* 默认隐藏 */
  position: fixed;
  top: 0;
  left: 0;
  width: 100vw;
  height: 100vh;
  background-color: rgba(0,0,0,0.75);
  z-index: 9999;
  align-items: center;
  justify-content: center;
}

.modal-content {
  width: 80%;
  max-width: 900px;
  position: relative;
}
.modal-content iframe {
  width: 100%;
  height: 500px;
  border-radius: 6px;
}

/* 关闭叉号 */
.close-btn {
  position: absolute;
  top: -30px;
  right: 0;
  color: #fff;
  font-size: 32px;
  cursor: pointer;
}
</style>

<script>
// 获取元素
const btn = document.getElementById("openBiliBtn");
const modal = document.getElementById("biliModal");
const closeBtn = document.querySelector(".close-btn");

// 点按钮打开弹窗
btn.onclick = function() {
  modal.style.display = "flex";
}
// 点叉号关闭弹窗
closeBtn.onclick = function() {
  modal.style.display = "none";
  // 关闭时停止视频（重要！不然还在后台播放声音）
  document.getElementById("biliPlayer").src = document.getElementById("biliPlayer").src;
}
// 点击遮罩空白处关闭
window.onclick = function(e) {
  if (e.target === modal) {
    modal.style.display = "none";
    document.getElementById("biliPlayer").src = document.getElementById("biliPlayer").src;
  }
}
</script>
<script>
history.pushState({}, "", "/miku-concert");
</script>

