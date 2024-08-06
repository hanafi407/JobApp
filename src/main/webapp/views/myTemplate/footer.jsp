<script>
   document.addEventListener('DOMContentLoaded',()=>{
       const currentPath= window.location.pathname;
       const navLinks = document.querySelectorAll('.nav-link')

       navLinks.forEach(link=>{
           if(link.getAttribute('href')===currentPath){
               link.classList.add('active')
           }
       })
   })
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous">

</script>
</body>
</html>