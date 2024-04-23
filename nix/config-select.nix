{
  "0.0.0" = {
    sha256 = "be9580a8c83c9d67f9b61d2b38a3bfb6af3c47c432c33fe033a487b23c09e968";
    revisions = {
      r0 = {
        nix = import ../hackage/config-select-0.0.0-r0-c0810bc917d2b6a62d92c5e6266d92fb171443ffc529b45755c77f747a8963d3.nix;
        revNum = 0;
        sha256 = "c0810bc917d2b6a62d92c5e6266d92fb171443ffc529b45755c77f747a8963d3";
      };
      default = "r0";
    };
  };
  "0.0.1" = {
    sha256 = "9e0c6ae70eafa6879b7ae012d3c2e58b77b360a9e2a4a75e8fbaf8c204d12eac";
    revisions = {
      r0 = {
        nix = import ../hackage/config-select-0.0.1-r0-78b84d7a4fcd58b06960277dfd89fc3e04f5b6bee815fde3b4bf00337182eb78.nix;
        revNum = 0;
        sha256 = "78b84d7a4fcd58b06960277dfd89fc3e04f5b6bee815fde3b4bf00337182eb78";
      };
      default = "r0";
    };
  };
}