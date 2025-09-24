{
  "1.0.0" = {
    sha256 = "26efca9727c81188f092dfd9d2ed8eb6721138d529d9769ac9ba8e925cf55fc5";
    revisions = {
      r0 = {
        nix = import ../hackage/relocant-1.0.0-r0-ed5623b70fd6c7e543862477a3a9e50bdbf8086bd643d15c5b4d792c6225fd14.nix;
        revNum = 0;
        sha256 = "ed5623b70fd6c7e543862477a3a9e50bdbf8086bd643d15c5b4d792c6225fd14";
      };
      default = "r0";
    };
  };
  "1.1.0" = {
    sha256 = "b09a963a4b8d71298d8aa06d05fa61ba5661a9562cb305987f5edeaef673d171";
    revisions = {
      r0 = {
        nix = import ../hackage/relocant-1.1.0-r0-6ae05de424ca064aa229c9362b1d12a266fa20cfaab0e39b1fe3a2da3137397a.nix;
        revNum = 0;
        sha256 = "6ae05de424ca064aa229c9362b1d12a266fa20cfaab0e39b1fe3a2da3137397a";
      };
      default = "r0";
    };
  };
}