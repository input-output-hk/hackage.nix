{
  "0.1.0.0" = {
    sha256 = "ac2a2ab99acdc703cae5d0507c0b3a28af6a2e81e1c1628674beab9ba976e5ce";
    revisions = {
      r0 = {
        nix = import ../hackage/hs-opentelemetry-instrumentation-auto-0.1.0.0-r0-dcc9555bb39f525180b283c92949fe3c36b7c0a730bcc4e0d4abaca645a753b5.nix;
        revNum = 0;
        sha256 = "dcc9555bb39f525180b283c92949fe3c36b7c0a730bcc4e0d4abaca645a753b5";
        };
      r1 = {
        nix = import ../hackage/hs-opentelemetry-instrumentation-auto-0.1.0.0-r1-63f26362815bb0167ffa80b68ebe29e1380446352dd0d7988603a9d40e861cf3.nix;
        revNum = 1;
        sha256 = "63f26362815bb0167ffa80b68ebe29e1380446352dd0d7988603a9d40e861cf3";
        };
      r2 = {
        nix = import ../hackage/hs-opentelemetry-instrumentation-auto-0.1.0.0-r2-00e6c1298cbf824da224458de6d9c0d40f7847d05905f1a7d680b757f52d0c6a.nix;
        revNum = 2;
        sha256 = "00e6c1298cbf824da224458de6d9c0d40f7847d05905f1a7d680b757f52d0c6a";
        };
      default = "r2";
      };
    };
  }