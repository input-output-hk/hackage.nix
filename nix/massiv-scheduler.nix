{
  "0.1.0.0" = {
    sha256 = "78f62bf37202c085172fe68cec31613edbf48a4608ae34ec451d1ae714bb0c7b";
    revisions = {
      r0 = {
        nix = import ../hackage/massiv-scheduler-0.1.0.0-r0-f9dd7f1fc38dc44032b217ce70f62be1ace7f8430cfb6048903b7437d1a54408.nix;
        revNum = 0;
        sha256 = "f9dd7f1fc38dc44032b217ce70f62be1ace7f8430cfb6048903b7437d1a54408";
        };
      r1 = {
        nix = import ../hackage/massiv-scheduler-0.1.0.0-r1-124575860eb0437a53b253a20861bc54f46de3ad9c0c46259e9762a651858bd6.nix;
        revNum = 1;
        sha256 = "124575860eb0437a53b253a20861bc54f46de3ad9c0c46259e9762a651858bd6";
        };
      default = "r1";
      };
    };
  "0.1.1.0" = {
    sha256 = "63a391ae31d2be02a6ea4f3332b3251496a26dd5d60e2dfab1a4df79d50b52c4";
    revisions = {
      r0 = {
        nix = import ../hackage/massiv-scheduler-0.1.1.0-r0-68276c1023a3eec4c2aef33488935d63e117eac16bfd608c52f2086cb2e9ebf2.nix;
        revNum = 0;
        sha256 = "68276c1023a3eec4c2aef33488935d63e117eac16bfd608c52f2086cb2e9ebf2";
        };
      default = "r0";
      };
    };
  }