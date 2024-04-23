{
  "0.1" = {
    sha256 = "9a24bb1d96713f607c0a328a61acbd4eb52b1eb39555a913908d56ca7482dfda";
    revisions = {
      r0 = {
        nix = import ../hackage/genprog-0.1-r0-98830cb0cc305883f842aa0374af0925a738c0ff8cbf2c0aa70f82dd3194db5a.nix;
        revNum = 0;
        sha256 = "98830cb0cc305883f842aa0374af0925a738c0ff8cbf2c0aa70f82dd3194db5a";
      };
      r1 = {
        nix = import ../hackage/genprog-0.1-r1-9a46697ac58c060bd11588569019fceddaebd7274c387a5ffa51d60137e19c87.nix;
        revNum = 1;
        sha256 = "9a46697ac58c060bd11588569019fceddaebd7274c387a5ffa51d60137e19c87";
      };
      default = "r1";
    };
  };
  "0.1.0.1" = {
    sha256 = "68d6216d806fa25d5596f4a4589ea767cef0c5053526904f5effc64683456eec";
    revisions = {
      r0 = {
        nix = import ../hackage/genprog-0.1.0.1-r0-0dec200d92952bef4b26805e610ef6b4a3c494bbe8b9bdf5b190c3e67566d583.nix;
        revNum = 0;
        sha256 = "0dec200d92952bef4b26805e610ef6b4a3c494bbe8b9bdf5b190c3e67566d583";
      };
      default = "r0";
    };
  };
  "0.1.0.2" = {
    sha256 = "f9de4698dc4a96d5619791becb2f322ec5de3a6c5f64cff82f9d3bae09142ba9";
    revisions = {
      r0 = {
        nix = import ../hackage/genprog-0.1.0.2-r0-f613e344deaac9c7777d91bd4015fe26422167e9c5bae12a2f371e5ae19f72de.nix;
        revNum = 0;
        sha256 = "f613e344deaac9c7777d91bd4015fe26422167e9c5bae12a2f371e5ae19f72de";
      };
      default = "r0";
    };
  };
}