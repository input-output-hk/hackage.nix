{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "cci";
        version = "0.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "(C) 2012-2013 Parallel Scientific Labs, LLC";
      maintainer = "Facundo Domínguez <facundo.dominguez@parsci.com>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Bindings for the CCI networking library";
      description = "The CCI project is an open source communication interface that\naims to provide a simple and portable API, high performance,\nscalability for the largest deployments, and robustness in the\npresence of faults. It is developed and maintained by a\npartnership of research, academic, and industry members.\n\nSee <http://cci-forum.com> for details.";
      buildType = "Simple";
    };
    components = {
      "cci" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
        libs = [ (pkgs."cci") ];
      };
      exes = {
        "cci-example-client" = {
          depends  = pkgs.lib.optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cci)
          ];
        };
        "cci-example-pingpong" = {
          depends  = pkgs.lib.optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cci)
            (hsPkgs.time)
          ];
        };
        "cci-example-server" = {
          depends  = pkgs.lib.optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cci)
          ];
        };
        "cci-example-registration-benchmark" = {
          depends  = pkgs.lib.optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cci)
            (hsPkgs.time)
          ];
        };
      };
      tests = {
        "test-cci" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cci)
            (hsPkgs.containers)
            (hsPkgs.binary)
            (hsPkgs.process)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.random)
            (hsPkgs.cmdargs)
            (hsPkgs.pretty)
          ];
        };
        "test-worker" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cci)
            (hsPkgs.time)
            (hsPkgs.containers)
            (hsPkgs.binary)
          ];
        };
      };
    };
  }