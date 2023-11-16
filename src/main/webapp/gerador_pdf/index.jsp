<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Gerar PDF com conteudo HTML</title>

</head>
<body>

    <h1>Gerar PDF com conteúdo HTML</h1>

    <button onclick="gerarPDF()">Gerar PDF</button>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js" 
    integrity="sha512-qZvrmS2ekKPF2mSznTQsxqPgnpkI4DNTlrdUmTzrDgektczlKNRRhy5X5AAOnx5S09ydFYWWNSfcEqDTTHgtNA==" 
    crossorigin="anonymous"
    referrerpolicy="no-referrer"></script>

    <script>
        function gerarPDF(){
            //Instanciar o jsPDF
            var doc = new jsPDF();
            // Conteúdo HTML 
            doc.fromHTML('<h1>Gerar PDF com conteudo HTML</h1>');
            // Gerar PDF
            doc.save('PetMatch.pdf');
        }
    </script>
    
</body>
</html>