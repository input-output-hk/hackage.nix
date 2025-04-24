{
  "1.3" = {
    sha256 = "375866f776205a117c54cf508556d0c3dd6d2dd49413abc79507a017222a4100";
    revisions = {
      r0 = {
        nix = import ../hackage/genai-lib-1.3-r0-5d48c8061c9afebf0da9a515dae53730f203a378d3bd44962142368d61c52bb5.nix;
        revNum = 0;
        sha256 = "5d48c8061c9afebf0da9a515dae53730f203a378d3bd44962142368d61c52bb5";
      };
      default = "r0";
    };
  };
  "2.0" = {
    sha256 = "90c4d11af57326d6ed1aac65352706d176dad297f65a7c154bf12464102f7278";
    revisions = {
      r0 = {
        nix = import ../hackage/genai-lib-2.0-r0-639adb0f0e36a8a3a0edf5de16a3de12766172597a8ebfa9cddd78fad853a741.nix;
        revNum = 0;
        sha256 = "639adb0f0e36a8a3a0edf5de16a3de12766172597a8ebfa9cddd78fad853a741";
      };
      default = "r0";
    };
  };
  "2.0.1" = {
    sha256 = "fb13b6169ba212f4ce8a0716a7568442c33a230f6803de0892822f6f0b2e0fe4";
    revisions = {
      r0 = {
        nix = import ../hackage/genai-lib-2.0.1-r0-8938a1744a65fbeaa5c98918549edcc997e5cc162355b3acc4250fad8e76a8ed.nix;
        revNum = 0;
        sha256 = "8938a1744a65fbeaa5c98918549edcc997e5cc162355b3acc4250fad8e76a8ed";
      };
      default = "r0";
    };
  };
}