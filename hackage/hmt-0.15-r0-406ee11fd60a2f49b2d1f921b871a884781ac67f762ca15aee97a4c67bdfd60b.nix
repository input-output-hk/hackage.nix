{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hmt"; version = "0.15"; };
      license = "LicenseRef-GPL";
      copyright = "Rohan Drape, 2006-2014";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://rd.slavepianos.org/t/hmt";
      url = "";
      synopsis = "Haskell Music Theory";
      description = "Haskell music theory library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.colour)
          (hsPkgs.containers)
          (hsPkgs.data-ordlist)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.lazy-csv)
          (hsPkgs.logict)
          (hsPkgs.multiset-comb)
          (hsPkgs.parsec)
          (hsPkgs.permutation)
          (hsPkgs.primes)
          (hsPkgs.safe)
          (hsPkgs.split)
          (hsPkgs.utf8-string)
          ];
        };
      };
    }