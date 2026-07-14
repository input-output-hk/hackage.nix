{
  "1.0.0.0" = {
    sha256 = "43677625fb31e1a542befe9c3b474d1830a5799390742abe37623b8d37967097";
    revisions = {
      r0 = {
        nix = import ../hackage/pg-migrate-1.0.0.0-r0-4ec790ab7a92f9e90b70546898c483be2ee8d4ad55786eea54f37ade5619df59.nix;
        revNum = 0;
        sha256 = "4ec790ab7a92f9e90b70546898c483be2ee8d4ad55786eea54f37ade5619df59";
      };
      default = "r0";
    };
  };
  "1.1.0.0" = {
    sha256 = "23df4d45e41fe554acc85869c35349c1dc19250d54d968b60043aa90e13cabd5";
    revisions = {
      r0 = {
        nix = import ../hackage/pg-migrate-1.1.0.0-r0-5444015cf4bb66b10bb1d83d26dc410d4f69d523530cca4aefce8295a6a36afd.nix;
        revNum = 0;
        sha256 = "5444015cf4bb66b10bb1d83d26dc410d4f69d523530cca4aefce8295a6a36afd";
      };
      default = "r0";
    };
  };
}