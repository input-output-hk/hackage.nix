{
  "0.1.0.0" = {
    sha256 = "7d9d5df0d5661b6981c11ed77dd86ca6018276bd7c9c8c7202979462d095af74";
    revisions = {
      r0 = {
        nix = import ../hackage/aeson-decode-0.1.0.0-r0-4a3f801f43a2b0eda264cc837ad113fa00a2593c5887097aadb289f4d119e488.nix;
        revNum = 0;
        sha256 = "4a3f801f43a2b0eda264cc837ad113fa00a2593c5887097aadb289f4d119e488";
      };
      r1 = {
        nix = import ../hackage/aeson-decode-0.1.0.0-r1-03ac5fbdbd7e7188f5c295d6232c6221ad872282c55400a57b716f64f3813ad8.nix;
        revNum = 1;
        sha256 = "03ac5fbdbd7e7188f5c295d6232c6221ad872282c55400a57b716f64f3813ad8";
      };
      default = "r1";
    };
  };
  "0.1.0.1" = {
    sha256 = "7142363b4220c0f7a0afe7553ff0e54d381ec1fd6dbc6c7ac567f5b20fd04b58";
    revisions = {
      r0 = {
        nix = import ../hackage/aeson-decode-0.1.0.1-r0-e2338408a03c8bb4a55eddfd39c6f716edeaf8177f7511dfd072e2ee79f2ca04.nix;
        revNum = 0;
        sha256 = "e2338408a03c8bb4a55eddfd39c6f716edeaf8177f7511dfd072e2ee79f2ca04";
      };
      default = "r0";
    };
  };
}