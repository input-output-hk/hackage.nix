{
  "0.1.0.0" = {
    sha256 = "e4d693ac84fcb70c747b8da3cc3e3edb9f5fa5b53faebe70509bd6db9713b8ad";
    revisions = {
      r0 = {
        nix = import ../hackage/lazy-hash-cache-0.1.0.0-r0-c1b719f835ec07099415b7e1817b8b2e8208b08c731c4e97d7527aa5912e7b9d.nix;
        revNum = 0;
        sha256 = "c1b719f835ec07099415b7e1817b8b2e8208b08c731c4e97d7527aa5912e7b9d";
      };
      r1 = {
        nix = import ../hackage/lazy-hash-cache-0.1.0.0-r1-b20c5ce85b9c4ccea5407cd813d1b58261027e615448d6c236ebee91a4e682d4.nix;
        revNum = 1;
        sha256 = "b20c5ce85b9c4ccea5407cd813d1b58261027e615448d6c236ebee91a4e682d4";
      };
      r2 = {
        nix = import ../hackage/lazy-hash-cache-0.1.0.0-r2-65cf9b441c2827d455df789aca976daec50e36b0766290c7c479cb1b00342ff0.nix;
        revNum = 2;
        sha256 = "65cf9b441c2827d455df789aca976daec50e36b0766290c7c479cb1b00342ff0";
      };
      default = "r2";
    };
  };
}