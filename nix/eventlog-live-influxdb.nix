{
  "0.1.0.0" = {
    sha256 = "16eae02382789875c8cf53f119e9953f053ce361750f24fce78c463db700728b";
    revisions = {
      r0 = {
        nix = import ../hackage/eventlog-live-influxdb-0.1.0.0-r0-670fa6f1e4e4c982116e6b90198a55dfed6ff8aac6c22c5c3e4abbc4d2dda150.nix;
        revNum = 0;
        sha256 = "670fa6f1e4e4c982116e6b90198a55dfed6ff8aac6c22c5c3e4abbc4d2dda150";
      };
      r1 = {
        nix = import ../hackage/eventlog-live-influxdb-0.1.0.0-r1-05e0487b6d31ce77951cfe95e21ee2e2e26238b1c75b8b8089995e20d8fe23e9.nix;
        revNum = 1;
        sha256 = "05e0487b6d31ce77951cfe95e21ee2e2e26238b1c75b8b8089995e20d8fe23e9";
      };
      default = "r1";
    };
  };
  "0.1.0.1" = {
    sha256 = "0da80451df86e0b03c1cd63b61f5ac21e46a18f444dfc56888b8850fd39b5094";
    revisions = {
      r0 = {
        nix = import ../hackage/eventlog-live-influxdb-0.1.0.1-r0-bbc17c42b178693058e4b0282be76242355f9802fb366537bbeed2122bba70be.nix;
        revNum = 0;
        sha256 = "bbc17c42b178693058e4b0282be76242355f9802fb366537bbeed2122bba70be";
      };
      r1 = {
        nix = import ../hackage/eventlog-live-influxdb-0.1.0.1-r1-f7328602f96c03492f8e602ccb0ea90200df300344fc014890ddd44cbcd866ba.nix;
        revNum = 1;
        sha256 = "f7328602f96c03492f8e602ccb0ea90200df300344fc014890ddd44cbcd866ba";
      };
      default = "r1";
    };
  };
}