{
  "0.1.0.0" = {
    sha256 = "410f316118037f3fed6dcd58c667b5ad278f4e5bac6053c6366d8b59a9209d93";
    revisions = {
      r0 = {
        nix = import ../hackage/stable-heap-0.1.0.0-r0-b46908d1a7102dbf531e11589b396c4d93f351a502ca1e0254f9f9487f8f8a10.nix;
        revNum = 0;
        sha256 = "b46908d1a7102dbf531e11589b396c4d93f351a502ca1e0254f9f9487f8f8a10";
      };
      default = "r0";
    };
  };
  "0.2.1.0" = {
    sha256 = "63438232dc109af8f7454670c37eacc0f51a04a761c786d2227080617d82a300";
    revisions = {
      r0 = {
        nix = import ../hackage/stable-heap-0.2.1.0-r0-bc1a9c93cb55de9a1983e916d14e478340115d6a51264693cf3ca0d53e3459b7.nix;
        revNum = 0;
        sha256 = "bc1a9c93cb55de9a1983e916d14e478340115d6a51264693cf3ca0d53e3459b7";
      };
      r1 = {
        nix = import ../hackage/stable-heap-0.2.1.0-r1-a7c53c78dad2c84fa8401a0585f679c5e44d947a6ba3bdb9a80b4f0cd9cfee1d.nix;
        revNum = 1;
        sha256 = "a7c53c78dad2c84fa8401a0585f679c5e44d947a6ba3bdb9a80b4f0cd9cfee1d";
      };
      r2 = {
        nix = import ../hackage/stable-heap-0.2.1.0-r2-c12410797d632cd5cf29d56066d2bbab0f24b3340b745065795e2879ba27055e.nix;
        revNum = 2;
        sha256 = "c12410797d632cd5cf29d56066d2bbab0f24b3340b745065795e2879ba27055e";
      };
      default = "r2";
    };
  };
  "0.3.0.0" = {
    sha256 = "0f76f047334ae2a28e0966312f18a00bb8b0f27a227ff67bf666325815e865ae";
    revisions = {
      r0 = {
        nix = import ../hackage/stable-heap-0.3.0.0-r0-8a765d86f8ade0204b9e0a93842498e451d96bdb5104b2be1abc26ef730f5875.nix;
        revNum = 0;
        sha256 = "8a765d86f8ade0204b9e0a93842498e451d96bdb5104b2be1abc26ef730f5875";
      };
      default = "r0";
    };
  };
}