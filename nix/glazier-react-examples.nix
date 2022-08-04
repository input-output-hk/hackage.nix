{
  "0.4.0.0" = {
    sha256 = "2bff5dbf10e7f78bf61f93a8abe210d0cafcf634f3973e78aa2b1e7fd8188152";
    revisions = {
      r0 = {
        nix = import ../hackage/glazier-react-examples-0.4.0.0-r0-134a21c460305822fae0828e5be86e05b405c4543bd3aa124cc277e212f3f958.nix;
        revNum = 0;
        sha256 = "134a21c460305822fae0828e5be86e05b405c4543bd3aa124cc277e212f3f958";
        };
      default = "r0";
      };
    };
  "0.6.0.0" = {
    sha256 = "f5c39db40f0ccc6cb0beeddd1118c7117af7fa7510e99edfc6ceba49c45a2aa8";
    revisions = {
      r0 = {
        nix = import ../hackage/glazier-react-examples-0.6.0.0-r0-7d3e48fd17cd779d7c4ec1f0a49d3f2b0cb932ae53d39b494c7a4cf2d4535567.nix;
        revNum = 0;
        sha256 = "7d3e48fd17cd779d7c4ec1f0a49d3f2b0cb932ae53d39b494c7a4cf2d4535567";
        };
      r1 = {
        nix = import ../hackage/glazier-react-examples-0.6.0.0-r1-1d5bd271fe956250ee3054d852d39e21f32a228a006a11b0ab8d6adda35d3f90.nix;
        revNum = 1;
        sha256 = "1d5bd271fe956250ee3054d852d39e21f32a228a006a11b0ab8d6adda35d3f90";
        };
      default = "r1";
      };
    };
  }