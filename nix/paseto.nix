{
  "0.1.0.0" = {
    sha256 = "ceb896e60251ffa49ceebe24ec0905369fe2384b3ed61ff7ea8ddbfecb259add";
    revisions = {
      r0 = {
        nix = import ../hackage/paseto-0.1.0.0-r0-a9590d89cfb25bffc44433fd41e9239aa809e5b065372e9b36759717c77a1ced.nix;
        revNum = 0;
        sha256 = "a9590d89cfb25bffc44433fd41e9239aa809e5b065372e9b36759717c77a1ced";
      };
      r1 = {
        nix = import ../hackage/paseto-0.1.0.0-r1-c499fd61d2d6f1ad7fcc7945c87e0cec63af38b1248beababe7f056d708ad7cf.nix;
        revNum = 1;
        sha256 = "c499fd61d2d6f1ad7fcc7945c87e0cec63af38b1248beababe7f056d708ad7cf";
      };
      r2 = {
        nix = import ../hackage/paseto-0.1.0.0-r2-fd2a257bd7d3c6256193e964162fa3512a80dddb2e943bd18999fe8c21347607.nix;
        revNum = 2;
        sha256 = "fd2a257bd7d3c6256193e964162fa3512a80dddb2e943bd18999fe8c21347607";
      };
      default = "r2";
    };
  };
}