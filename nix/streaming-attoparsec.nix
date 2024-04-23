{
  "1.0.0" = {
    sha256 = "ff28925269ed98f03ef10a482980030dd7c8ef4c05ef6e32d147db9331df6102";
    revisions = {
      r0 = {
        nix = import ../hackage/streaming-attoparsec-1.0.0-r0-356fe70c0e5428aed18a931014d2be11b171954b60fddf1dfc3d73c7e8c47ad5.nix;
        revNum = 0;
        sha256 = "356fe70c0e5428aed18a931014d2be11b171954b60fddf1dfc3d73c7e8c47ad5";
      };
      r1 = {
        nix = import ../hackage/streaming-attoparsec-1.0.0-r1-777222c773461ef08b4a7a50205318909de8a9bcd76cd26f828feec9c69d516b.nix;
        revNum = 1;
        sha256 = "777222c773461ef08b4a7a50205318909de8a9bcd76cd26f828feec9c69d516b";
      };
      r2 = {
        nix = import ../hackage/streaming-attoparsec-1.0.0-r2-5db3acf7fd2d4c80bda12a8d80cb981bb499c2f586f08a27c31ae6602dd2181e.nix;
        revNum = 2;
        sha256 = "5db3acf7fd2d4c80bda12a8d80cb981bb499c2f586f08a27c31ae6602dd2181e";
      };
      default = "r2";
    };
  };
  "1.0.0.1" = {
    sha256 = "1ec9f3570dd7e27803053b3c682de94a32c2a1026d14b91c0fb0a98577942f94";
    revisions = {
      r0 = {
        nix = import ../hackage/streaming-attoparsec-1.0.0.1-r0-fe9b878072423d3f075534fe8af24722d9ded1a1129e9a6ed5b71c4a29681b39.nix;
        revNum = 0;
        sha256 = "fe9b878072423d3f075534fe8af24722d9ded1a1129e9a6ed5b71c4a29681b39";
      };
      default = "r0";
    };
  };
}