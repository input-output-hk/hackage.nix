{
  "0.1.0.0" = {
    sha256 = "4d1806819e9452a4cf3918e47694e14dfce7a17253d836df28a02f1cf3d0a64c";
    revisions = {
      r0 = {
        nix = import ../hackage/baikai-agent-0.1.0.0-r0-cd5b0c7b97e5de2ee2af2dc0c117c7129023c6c3465d874f974512d9f4d3dc9f.nix;
        revNum = 0;
        sha256 = "cd5b0c7b97e5de2ee2af2dc0c117c7129023c6c3465d874f974512d9f4d3dc9f";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "8e99a3a745fab0b344fcc892c9f2fe5b19743c07ac033fef15a177a244dcaac0";
    revisions = {
      r0 = {
        nix = import ../hackage/baikai-agent-0.2.0.0-r0-9a3be232fb9e10185d5fbf3d3e9f8a01bb18c037d486c48f74cdbc16360087b5.nix;
        revNum = 0;
        sha256 = "9a3be232fb9e10185d5fbf3d3e9f8a01bb18c037d486c48f74cdbc16360087b5";
      };
      default = "r0";
    };
  };
}