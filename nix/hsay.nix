{
  "1.0.0" = {
    sha256 = "56c26f7324ed7a6e52ebcbfd16f0299a2a1545e050fbcd7a47fad88ceda4b206";
    revisions = {
      r0 = {
        nix = import ../hackage/hsay-1.0.0-r0-31380f61f2cae8def79d355800b36d9df6e09a56b98d96c7053aff0c2dd95db9.nix;
        revNum = 0;
        sha256 = "31380f61f2cae8def79d355800b36d9df6e09a56b98d96c7053aff0c2dd95db9";
      };
      r1 = {
        nix = import ../hackage/hsay-1.0.0-r1-df2c372926bda6986bf42cacbc87b6e263e7288c6b1295867cb8cc8495cef1a8.nix;
        revNum = 1;
        sha256 = "df2c372926bda6986bf42cacbc87b6e263e7288c6b1295867cb8cc8495cef1a8";
      };
      default = "r1";
    };
  };
  "1.1.0" = {
    sha256 = "34ef6fd63f7b35eef1357160c1ae1e07fe8ebbd2a8ff2a87d9ae8114883f5961";
    revisions = {
      r0 = {
        nix = import ../hackage/hsay-1.1.0-r0-85d86ac9a5b1bf691d0341ec3cd93e401e003714d8518b41d65ff489401968fe.nix;
        revNum = 0;
        sha256 = "85d86ac9a5b1bf691d0341ec3cd93e401e003714d8518b41d65ff489401968fe";
      };
      default = "r0";
    };
  };
}