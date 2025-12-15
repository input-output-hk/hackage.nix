{
  "0.1.0" = {
    sha256 = "a7c130bbe063334eab88a538994024de8d7d2a60006c45e1a7eca002737863f9";
    revisions = {
      r0 = {
        nix = import ../hackage/ClickHaskell-0.1.0-r0-5439b9f1cc3a68be6cc60fc0691e7f75a68415b83655c6a4e06e1249bd62a111.nix;
        revNum = 0;
        sha256 = "5439b9f1cc3a68be6cc60fc0691e7f75a68415b83655c6a4e06e1249bd62a111";
      };
      r1 = {
        nix = import ../hackage/ClickHaskell-0.1.0-r1-3f3f97114628d66a5ac3cc9a7e308aee5e1c98ecf495b6743ff72bba07d515b5.nix;
        revNum = 1;
        sha256 = "3f3f97114628d66a5ac3cc9a7e308aee5e1c98ecf495b6743ff72bba07d515b5";
      };
      default = "r1";
    };
  };
  "0.2.0" = {
    sha256 = "749bfa79a8d1cc770389f43e8165b5339f32f17e4e19afcfd54a9c406b79ba8f";
    revisions = {
      r0 = {
        nix = import ../hackage/ClickHaskell-0.2.0-r0-b480d7f8c3eeff0d1066e6a4de9dd203c0808b712f5504f74281d0f718fd2b90.nix;
        revNum = 0;
        sha256 = "b480d7f8c3eeff0d1066e6a4de9dd203c0808b712f5504f74281d0f718fd2b90";
      };
      default = "r0";
    };
  };
  "1.0.0" = {
    sha256 = "cd7b546c241767a7b61a6d3afc9f7d2b892f9499c03ac4178436b7bf6705e4d3";
    revisions = {
      r0 = {
        nix = import ../hackage/ClickHaskell-1.0.0-r0-d6c9288d58c48cd701814a9c34d2aa3cd71ecc97656759c719fcb5c6fdf03253.nix;
        revNum = 0;
        sha256 = "d6c9288d58c48cd701814a9c34d2aa3cd71ecc97656759c719fcb5c6fdf03253";
      };
      default = "r0";
    };
  };
}