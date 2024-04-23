{
  "0.1" = {
    sha256 = "3cbeb300813ae542aa74420d048ab58554cab0f9a4fcd54ed9ee33e96a198d5f";
    revisions = {
      r0 = {
        nix = import ../hackage/radium-formula-parser-0.1-r0-2dfd04ad5a73fee6977218b151aab3412b9b890b2674e413e828926ea77e4ed2.nix;
        revNum = 0;
        sha256 = "2dfd04ad5a73fee6977218b151aab3412b9b890b2674e413e828926ea77e4ed2";
      };
      default = "r0";
    };
  };
  "0.2" = {
    sha256 = "6e91828c5353bb3c6eba1b1bd67cf87240290548001e2897552ec97604ab4fac";
    revisions = {
      r0 = {
        nix = import ../hackage/radium-formula-parser-0.2-r0-09097471f466c76fa39419a70edd7233329749a99b2bc991b57a7334bff05fd7.nix;
        revNum = 0;
        sha256 = "09097471f466c76fa39419a70edd7233329749a99b2bc991b57a7334bff05fd7";
      };
      default = "r0";
    };
  };
}