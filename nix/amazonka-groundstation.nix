{
  "2.0" = {
    sha256 = "606c3a80b9c31ea1921bc0f95c7023203aeede6ca6a87bd388a6964cc97c7cb1";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-groundstation-2.0-r0-3f71eae5446600171bb226a9777b23cd49c2932c504ae0fb5887cb55c6dbc199.nix;
        revNum = 0;
        sha256 = "3f71eae5446600171bb226a9777b23cd49c2932c504ae0fb5887cb55c6dbc199";
      };
      r1 = {
        nix = import ../hackage/amazonka-groundstation-2.0-r1-3a8acc9ce0904c98740192c3b72bb04dd9a1cc502b497e7c53a8ebe2a08cd0fa.nix;
        revNum = 1;
        sha256 = "3a8acc9ce0904c98740192c3b72bb04dd9a1cc502b497e7c53a8ebe2a08cd0fa";
      };
      default = "r1";
    };
  };
}