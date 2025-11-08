{
  "1.0.0" = {
    sha256 = "c4fb3f00796835d48fd47cae9927110ec1fd555e574c07f1ead39d4c2b682630";
    revisions = {
      r0 = {
        nix = import ../hackage/stratosphere-kinesis-1.0.0-r0-cc4543f8a123254c37796b8a4d4ad2a17704eaca2077a9570e793ec52484f62f.nix;
        revNum = 0;
        sha256 = "cc4543f8a123254c37796b8a4d4ad2a17704eaca2077a9570e793ec52484f62f";
      };
      default = "r0";
    };
  };
  "1.0.1" = {
    sha256 = "e7b283ea16b1aa16576ae2270a71993052dbb279394880c46a754bb5ebccaea7";
    revisions = {
      r0 = {
        nix = import ../hackage/stratosphere-kinesis-1.0.1-r0-fdcd57250fa9c747e29b46db3c70b645aed13f01e779cf910b9061756d41a647.nix;
        revNum = 0;
        sha256 = "fdcd57250fa9c747e29b46db3c70b645aed13f01e779cf910b9061756d41a647";
      };
      default = "r0";
    };
  };
}