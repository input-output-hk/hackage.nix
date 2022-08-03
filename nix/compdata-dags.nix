{
  "0.1" = {
    sha256 = "b2e407142693e2c2d7528d92257ce0cf3dea32919f736b7d2fb43c402f1d59c6";
    revisions = {
      r0 = {
        nix = import ../hackage/compdata-dags-0.1-r0-f040c814dd57add247d96d20651365235950a3e56fe3ae8e6348cec34bd1dcc5.nix;
        revNum = 0;
        sha256 = "f040c814dd57add247d96d20651365235950a3e56fe3ae8e6348cec34bd1dcc5";
        };
      r1 = {
        nix = import ../hackage/compdata-dags-0.1-r1-556bbb62f4b8b6d738a20775066342b4d911fed945729da5aea072fd5df65044.nix;
        revNum = 1;
        sha256 = "556bbb62f4b8b6d738a20775066342b4d911fed945729da5aea072fd5df65044";
        };
      default = "r1";
      };
    };
  "0.2" = {
    sha256 = "ec8806f65eb818bbaef9156da0191df49c6400fb3594046d8f6c1106aa93bb7c";
    revisions = {
      r0 = {
        nix = import ../hackage/compdata-dags-0.2-r0-c22f441705bc4a357d6bff4f8a3c1929c377b7b85a03f3d8e4beca3f54432b23.nix;
        revNum = 0;
        sha256 = "c22f441705bc4a357d6bff4f8a3c1929c377b7b85a03f3d8e4beca3f54432b23";
        };
      default = "r0";
      };
    };
  "0.2.1" = {
    sha256 = "a864473fc67592c9756af871d535fe540be24e841bfe80befb8bec7e39945140";
    revisions = {
      r0 = {
        nix = import ../hackage/compdata-dags-0.2.1-r0-acb038277c724f6d8537161a34395ad253dbd78803833a7d56b779c2d0b192c0.nix;
        revNum = 0;
        sha256 = "acb038277c724f6d8537161a34395ad253dbd78803833a7d56b779c2d0b192c0";
        };
      default = "r0";
      };
    };
  }