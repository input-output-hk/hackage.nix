{
  "0.1.0.0" = {
    sha256 = "80fad361a22cf58be525b87c9c9b5c0c1f67b795a3e27aa09f2cc66757fea1d8";
    revisions = {
      r0 = {
        nix = import ../hackage/RoundingFiasco-0.1.0.0-r0-f21985070a14dc9cddbc3b5ab573e85dc17297776f19d1a6dc534f584fd36c18.nix;
        revNum = 0;
        sha256 = "f21985070a14dc9cddbc3b5ab573e85dc17297776f19d1a6dc534f584fd36c18";
      };
      r1 = {
        nix = import ../hackage/RoundingFiasco-0.1.0.0-r1-112d5754bb30d134933ce350c24ff373e1e8f159d14b42cb3d827d1d66cac0bf.nix;
        revNum = 1;
        sha256 = "112d5754bb30d134933ce350c24ff373e1e8f159d14b42cb3d827d1d66cac0bf";
      };
      default = "r1";
    };
  };
}