{
  "2.0" = {
    sha256 = "26b886f540ae8197b8e0e76b51c7edf2d5f1507046daae8199394c7995094c15";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-servicecatalog-appregistry-2.0-r0-fe69f55eb10b4b2affc4249bbb198fc8d2a485e5d0c71f48d061ee3f69fbb2a7.nix;
        revNum = 0;
        sha256 = "fe69f55eb10b4b2affc4249bbb198fc8d2a485e5d0c71f48d061ee3f69fbb2a7";
      };
      r1 = {
        nix = import ../hackage/amazonka-servicecatalog-appregistry-2.0-r1-e2273dad4c57dc8d9a5f7115fbac842f584d0b73f55071e0e87fc051c1843b57.nix;
        revNum = 1;
        sha256 = "e2273dad4c57dc8d9a5f7115fbac842f584d0b73f55071e0e87fc051c1843b57";
      };
      default = "r1";
    };
  };
}