{
  "0.10" = {
    sha256 = "fb6db7633eb3a5257f1c0c38721036d6af7824173730a2e22ed54e056151db02";
    revisions = {
      r0 = {
        nix = import ../hackage/haskelldb-hsql-postgresql-0.10-r0-b8d666e0ac3b601bb75d761827107fb08eb2237ecf55efd7b08f12c7331d6aa9.nix;
        revNum = 0;
        sha256 = "b8d666e0ac3b601bb75d761827107fb08eb2237ecf55efd7b08f12c7331d6aa9";
      };
      default = "r0";
    };
  };
  "1.0.0" = {
    sha256 = "5b6fa0800ebda784a4bbaeca76c9937d6ebb5b7dc282ed1e31089684137f3bb4";
    revisions = {
      r0 = {
        nix = import ../hackage/haskelldb-hsql-postgresql-1.0.0-r0-cb4f16bf1d062e6e284634f8bc56b969596362946698047a9651a519aaf573d5.nix;
        revNum = 0;
        sha256 = "cb4f16bf1d062e6e284634f8bc56b969596362946698047a9651a519aaf573d5";
      };
      default = "r0";
    };
  };
}