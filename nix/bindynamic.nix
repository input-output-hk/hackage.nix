{
  "1.0.0.0" = {
    sha256 = "f1e9c392ea6a9be6a4d7200ed8060e5560ac6881c65c9423cc6e63d2bbe7246e";
    revisions = {
      r0 = {
        nix = import ../hackage/bindynamic-1.0.0.0-r0-95a623bd8bbbc776cdda961d2d916b9e58f6f96c29b0f908020c8673a6da8aa3.nix;
        revNum = 0;
        sha256 = "95a623bd8bbbc776cdda961d2d916b9e58f6f96c29b0f908020c8673a6da8aa3";
        };
      r1 = {
        nix = import ../hackage/bindynamic-1.0.0.0-r1-d2dca13b71f94e70829d5d290af936fd21d93e1fb9f6b89a8540cd6f40a0a7e5.nix;
        revNum = 1;
        sha256 = "d2dca13b71f94e70829d5d290af936fd21d93e1fb9f6b89a8540cd6f40a0a7e5";
        };
      default = "r1";
      };
    };
  "1.0.0.1" = {
    sha256 = "cb2d4e2063fd3080a7ee360637d764b61f2ff9aea8b2e0cea9f53ffe5417e5b6";
    revisions = {
      r0 = {
        nix = import ../hackage/bindynamic-1.0.0.1-r0-449d4e5cf87f2a97ce61e9861f36645cdc03c5cf00746f14215a1c109a9df16e.nix;
        revNum = 0;
        sha256 = "449d4e5cf87f2a97ce61e9861f36645cdc03c5cf00746f14215a1c109a9df16e";
        };
      r1 = {
        nix = import ../hackage/bindynamic-1.0.0.1-r1-c318379a2496ea10802a8dd036783066dedfed0732f932568ea2b41e64800257.nix;
        revNum = 1;
        sha256 = "c318379a2496ea10802a8dd036783066dedfed0732f932568ea2b41e64800257";
        };
      default = "r1";
      };
    };
  }