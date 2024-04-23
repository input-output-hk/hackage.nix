{
  "0.0.1" = {
    sha256 = "d923d291a26817f2bc54ba110efc8cb1cefcdb17c7a5af8e2d12506c594b7edc";
    revisions = {
      r0 = {
        nix = import ../hackage/data-default-instances-new-base-0.0.1-r0-f6da2951fb8ce4b8a0469cc7e7a9511feaab23814e306c34e20708e0bc993029.nix;
        revNum = 0;
        sha256 = "f6da2951fb8ce4b8a0469cc7e7a9511feaab23814e306c34e20708e0bc993029";
      };
      r1 = {
        nix = import ../hackage/data-default-instances-new-base-0.0.1-r1-04e2ef7445b4321897f23843d83f56be6fc32e0d649a08fad8996e92168c075d.nix;
        revNum = 1;
        sha256 = "04e2ef7445b4321897f23843d83f56be6fc32e0d649a08fad8996e92168c075d";
      };
      default = "r1";
    };
  };
  "0.0.2" = {
    sha256 = "831df35c14859b066767b56c746611aa9268e6352d2a45f6704d3859bf3ef143";
    revisions = {
      r0 = {
        nix = import ../hackage/data-default-instances-new-base-0.0.2-r0-1f90fe762c978f9fd0fcbf6d4cb6cd191d261e25acf9308505b3444aef8c079f.nix;
        revNum = 0;
        sha256 = "1f90fe762c978f9fd0fcbf6d4cb6cd191d261e25acf9308505b3444aef8c079f";
      };
      default = "r0";
    };
  };
}