{
  "0.1.0.0" = {
    sha256 = "7c60d07b76e8bb2d1be1bc262e15314c8691f2a54f9f9ae3ce3d04350179d83d";
    revisions = {
      r0 = {
        nix = import ../hackage/currency-0.1.0.0-r0-a6551e4544e746b42d25123ee8b6916c23d884dce1dc38f6ea50afe345b8a11a.nix;
        revNum = 0;
        sha256 = "a6551e4544e746b42d25123ee8b6916c23d884dce1dc38f6ea50afe345b8a11a";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "bcd517f3d9f47f0dd3c4e802143159239e4a90db2fc552be4a99d759ffe9417a";
    revisions = {
      r0 = {
        nix = import ../hackage/currency-0.2.0.0-r0-7cb443409ad619abd9d8688db553f60c738c76b41222df5fc99b3c642d42c544.nix;
        revNum = 0;
        sha256 = "7cb443409ad619abd9d8688db553f60c738c76b41222df5fc99b3c642d42c544";
      };
      default = "r0";
    };
  };
}