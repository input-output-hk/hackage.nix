{
  "1.9.3" = {
    sha256 = "2d43cbb5024fc01e27c1ea82941b2e7bef2c214a16d642462d43b80e006912f6";
    revisions = {
      r0 = {
        nix = import ../hackage/Chart-tests-1.9.3-r0-5e38b5d20daf45f2a523230708e2d3ac443cb3422d25b3d0eb3488078a2595be.nix;
        revNum = 0;
        sha256 = "5e38b5d20daf45f2a523230708e2d3ac443cb3422d25b3d0eb3488078a2595be";
      };
      r1 = {
        nix = import ../hackage/Chart-tests-1.9.3-r1-70ef4701a270894e20b2e44a8c376416918bd79d032e97141b1ea3cb438ff8ce.nix;
        revNum = 1;
        sha256 = "70ef4701a270894e20b2e44a8c376416918bd79d032e97141b1ea3cb438ff8ce";
      };
      r2 = {
        nix = import ../hackage/Chart-tests-1.9.3-r2-8eab9a3c97391a5f54f98d82de7a910b8671c32e119007ef71b61250fced0dc5.nix;
        revNum = 2;
        sha256 = "8eab9a3c97391a5f54f98d82de7a910b8671c32e119007ef71b61250fced0dc5";
      };
      default = "r2";
    };
  };
  "1.9.4" = {
    sha256 = "d71156ed92cf2f6fc0b7cb1c789ccac5df82f27c17e477a52aa2f24a680bc3eb";
    revisions = {
      r0 = {
        nix = import ../hackage/Chart-tests-1.9.4-r0-349c072e3c95c2a26190e0c79d0a086fb8d85d72e6fb5999bec082485789ea78.nix;
        revNum = 0;
        sha256 = "349c072e3c95c2a26190e0c79d0a086fb8d85d72e6fb5999bec082485789ea78";
      };
      default = "r0";
    };
  };
}