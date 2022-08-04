{
  "0.1.0.0" = {
    sha256 = "0cab9c9445bad9ebdc17f933d01ec4dd3652c17420725b1896b5c46d53ab1a6f";
    revisions = {
      r0 = {
        nix = import ../hackage/hedis-envy-0.1.0.0-r0-b84efae4b247233935c45a69c7887d48871017d03d9026b6ef03b646b78efebd.nix;
        revNum = 0;
        sha256 = "b84efae4b247233935c45a69c7887d48871017d03d9026b6ef03b646b78efebd";
        };
      r1 = {
        nix = import ../hackage/hedis-envy-0.1.0.0-r1-3a914bcf200bd322ce656b4768f492d4212d213c4986f433346ffc4a2542076c.nix;
        revNum = 1;
        sha256 = "3a914bcf200bd322ce656b4768f492d4212d213c4986f433346ffc4a2542076c";
        };
      default = "r1";
      };
    };
  "0.1.0.1" = {
    sha256 = "06efaf72b2aa64c78e0193af0472f41217f5b7fa03f42a697f298618f83daa98";
    revisions = {
      r0 = {
        nix = import ../hackage/hedis-envy-0.1.0.1-r0-3a8ab5fed84360fd548230a43420ad40b86707df22ff8bffe189a5e39cefc402.nix;
        revNum = 0;
        sha256 = "3a8ab5fed84360fd548230a43420ad40b86707df22ff8bffe189a5e39cefc402";
        };
      default = "r0";
      };
    };
  }