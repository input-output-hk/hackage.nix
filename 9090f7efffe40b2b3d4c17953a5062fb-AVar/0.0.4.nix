{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "AVar";
        version = "0.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alex Mason <axman6@gmail.com>";
      author = "Alex Mason";
      homepage = "";
      url = "";
      synopsis = "Mutable variables with Exception handling and concurrency support.";
      description = "AVars emulate mutable variables, by providing a queue based\ninterface to interacting with the variable. Each variable runs\na 'handler' function, which reads requests from a queue and\nprocesses them one by one. They can be used in concurrent\nsystems safely, and should handle exceptions thrown by\nmodifying functions gracefully.\nThere is also an unsafe interface through Data.AVar.Unsafe,\nwhich will throw any errors encountered while modifying\nthe variable.";
      buildType = "Simple";
    };
    components = {
      "AVar" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }