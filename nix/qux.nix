{
  "0.1.0.0" = {
    sha256 = "fb2de869de3645b69c0f4bada356e3d1fd2902cf7d09315f7797eee93dd6f1da";
    revisions = {
      r0 = {
        nix = import ../hackage/qux-0.1.0.0-r0-db59f00e79e768e270c34e91cfb9b81ffc55c37ddbc8a0369f1119b160b49bbd.nix;
        revNum = 0;
        sha256 = "db59f00e79e768e270c34e91cfb9b81ffc55c37ddbc8a0369f1119b160b49bbd";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "9f3a033e164b906384b4dd8312306a75ab2afefb3aa5533fc512ab38e33f341f";
    revisions = {
      r0 = {
        nix = import ../hackage/qux-0.2.0.0-r0-7ce9ea5df32451aba25d75f90ceb685eda4254f4919336d900e562a569f94d00.nix;
        revNum = 0;
        sha256 = "7ce9ea5df32451aba25d75f90ceb685eda4254f4919336d900e562a569f94d00";
      };
      default = "r0";
    };
  };
}