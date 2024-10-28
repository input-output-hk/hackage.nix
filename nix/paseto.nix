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
  "0.1.1.0" = {
    sha256 = "db1ba752bd5e185917dbfb998eec78fce62877d271b4099851b7dffbe3269193";
    revisions = {
      r0 = {
        nix = import ../hackage/paseto-0.1.1.0-r0-f588ccc5e07172a67439f11d5d17bb93e0d8e885d2c4fd4a61e299a825241302.nix;
        revNum = 0;
        sha256 = "f588ccc5e07172a67439f11d5d17bb93e0d8e885d2c4fd4a61e299a825241302";
      };
      default = "r0";
    };
  };
  "0.1.1.1" = {
    sha256 = "0ddf94a40391aa4d6161263496467c9711a7d1895571f998f82bcaf331db6d7c";
    revisions = {
      r0 = {
        nix = import ../hackage/paseto-0.1.1.1-r0-84ec227a8e8d5050c6a2a5cb00bf0d420f279a1a9a3078785f9a1aca8755dbb0.nix;
        revNum = 0;
        sha256 = "84ec227a8e8d5050c6a2a5cb00bf0d420f279a1a9a3078785f9a1aca8755dbb0";
      };
      default = "r0";
    };
  };
}