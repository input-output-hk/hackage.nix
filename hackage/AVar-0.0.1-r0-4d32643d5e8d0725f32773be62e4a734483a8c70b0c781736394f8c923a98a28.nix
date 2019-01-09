{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "AVar"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alex Mason <axman6@gmail.com>";
      author = "Alex Mason";
      homepage = "";
      url = "";
      synopsis = "Mutable variables with Exception handling and concurrency support.";
      description = "AVars emulate mutable variables, by providing a queue based interface to interacting with the variable. Each variable runs a 'handler' function, which reads requests from a queue and processes them one by one. They can be used in concurrent systems safely, and should handle exceptions thrown by modifying functions gracefully.";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }