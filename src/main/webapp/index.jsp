<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="./css/bootstrap.css" />
    </head>
    <body>
        <div class="d-flex justify-content-center m-5 b-5">
            <div class="spinner-border" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <script src="js/jquery-3.5.1.min.js"></script>        
        <script src="js/bootstrap.js"></script>

        <script>
            $(document).ready(function () {
                getCharacters();
            });
            
            function getCharacters() {
                var url = "GetStuffServlet";
                var action = "getCharacters"
                $.ajax({
                    url: url,
                    data: {
                        action: action
                    },
                    dataType: 'jason',
                    success: function (data){
                        
                    },
                    error: function (request, textStatus, errorThrown) {
                        alert(request.status + ', Error: ' + request.statusText);
                    }
                })
            }
        </script>
    </body>
</html>
