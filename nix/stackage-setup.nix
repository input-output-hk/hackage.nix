{
  "0.0.0" = {
    sha256 = "a2f7b8fb82af561ad0582b0e70550734a74c9e2cd3c5004dceb8aeefbc1ff545";
    revisions = {
      r0 = {
        nix = import ../hackage/stackage-setup-0.0.0-r0-8ac4a60ca915da8df522704d2e7a8b4834bbc7115861eed9308c7adfdd351239.nix;
        revNum = 0;
        sha256 = "8ac4a60ca915da8df522704d2e7a8b4834bbc7115861eed9308c7adfdd351239";
      };
      default = "r0";
    };
  };
  "0.0.0.1" = {
    sha256 = "257f98997ba7bd6a4ec3b79c899e25ada5c7a48f654a327bf78662d8b2c97771";
    revisions = {
      r0 = {
        nix = import ../hackage/stackage-setup-0.0.0.1-r0-86c0e3392ff6a885f16a9c2a3a3d1dcb00f5470ceb94795c593fcb3eef3a9d5c.nix;
        revNum = 0;
        sha256 = "86c0e3392ff6a885f16a9c2a3a3d1dcb00f5470ceb94795c593fcb3eef3a9d5c";
      };
      default = "r0";
    };
  };
  "0.0.1" = {
    sha256 = "7c5e1f8794f9415deb864f80a59ef38cc04dc57626ea1d7226254c3ede1165b5";
    revisions = {
      r0 = {
        nix = import ../hackage/stackage-setup-0.0.1-r0-a8a7b09198f47478ab047897afb8f9a580b539a75e123a16fe0e7ce1fd942bd1.nix;
        revNum = 0;
        sha256 = "a8a7b09198f47478ab047897afb8f9a580b539a75e123a16fe0e7ce1fd942bd1";
      };
      r1 = {
        nix = import ../hackage/stackage-setup-0.0.1-r1-951f86425eb01b40b359c4bea0066ecf2817920f24e55ecf407eec5f4cfac970.nix;
        revNum = 1;
        sha256 = "951f86425eb01b40b359c4bea0066ecf2817920f24e55ecf407eec5f4cfac970";
      };
      default = "r1";
    };
  };
  "0.0.2" = {
    sha256 = "3bae41b72eb7992affedea2937ffb6c66e8f01d2c42ef5a4fc826c21d0d20184";
    revisions = {
      r0 = {
        nix = import ../hackage/stackage-setup-0.0.2-r0-db476dcd26f526be878821a79311e97ed0af38a721fe08739919fcb7908aad56.nix;
        revNum = 0;
        sha256 = "db476dcd26f526be878821a79311e97ed0af38a721fe08739919fcb7908aad56";
      };
      default = "r0";
    };
  };
}