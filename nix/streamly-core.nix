{
  "0.1.0" = {
    sha256 = "b4c52f3f192b4f259213231742df0ef12e7d504225afdfca7d1f48fec4734e2b";
    revisions = {
      r0 = {
        nix = import ../hackage/streamly-core-0.1.0-r0-34c7c4e87b8d5e5956efd256483348d1230afb79283c93a470c6af2e21c7b625.nix;
        revNum = 0;
        sha256 = "34c7c4e87b8d5e5956efd256483348d1230afb79283c93a470c6af2e21c7b625";
        };
      default = "r0";
      };
    };
  "0.2.0" = {
    sha256 = "9fe280b777b7b38138d9bede92c792dc7b7c23458978305663808337d7332424";
    revisions = {
      r0 = {
        nix = import ../hackage/streamly-core-0.2.0-r0-73d0b5dcc1cda6b42f463d1fd69517b6a5af7a03163c1aa61aefebc454542a50.nix;
        revNum = 0;
        sha256 = "73d0b5dcc1cda6b42f463d1fd69517b6a5af7a03163c1aa61aefebc454542a50";
        };
      r1 = {
        nix = import ../hackage/streamly-core-0.2.0-r1-212a21ffa8428a0f45ccd0fea2db50e8b27d9e295fcebb2c909af6c1f2c96bcf.nix;
        revNum = 1;
        sha256 = "212a21ffa8428a0f45ccd0fea2db50e8b27d9e295fcebb2c909af6c1f2c96bcf";
        };
      default = "r1";
      };
    };
  "0.2.1" = {
    sha256 = "7afdc08c9835da91b1a761f80c813e2a7c965e5fd1f48d663f005675bb3154fd";
    revisions = {
      r0 = {
        nix = import ../hackage/streamly-core-0.2.1-r0-432a03cac3ab34755a83b5dc685a59612fc8abaa6fc715ba745ff8df54931f64.nix;
        revNum = 0;
        sha256 = "432a03cac3ab34755a83b5dc685a59612fc8abaa6fc715ba745ff8df54931f64";
        };
      default = "r0";
      };
    };
  }