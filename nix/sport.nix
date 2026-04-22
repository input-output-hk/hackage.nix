{
  "0.1.0.0" = {
    sha256 = "4e81cb0ffbc8239194b6fef399bc43491455be2f2663e1456460ee0e57127c2b";
    revisions = {
      r0 = {
        nix = import ../hackage/sport-0.1.0.0-r0-e48bbaf3bf6cc30c68e03a3d63069705d26c08e4cc10e4544f4395aaa6cd2c4e.nix;
        revNum = 0;
        sha256 = "e48bbaf3bf6cc30c68e03a3d63069705d26c08e4cc10e4544f4395aaa6cd2c4e";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "a1fbf3ba405cbbf05e1b4d06f2d1ad27d10ab4e012d0677e8777bec6c87d409f";
    revisions = {
      r0 = {
        nix = import ../hackage/sport-0.2.0.0-r0-7df86ec1c94b39bcc9461914bd4dde50df27d9a8217bd40c34359d1d9b0ce9b1.nix;
        revNum = 0;
        sha256 = "7df86ec1c94b39bcc9461914bd4dde50df27d9a8217bd40c34359d1d9b0ce9b1";
      };
      default = "r0";
    };
  };
}