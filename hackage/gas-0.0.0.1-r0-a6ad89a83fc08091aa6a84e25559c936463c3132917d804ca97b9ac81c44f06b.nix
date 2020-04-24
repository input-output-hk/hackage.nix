{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "gas"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "rightfold <rightfold@gmail.com>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Limit how many steps a program may take.";
      description = "Programs constructed using free applicatives or free monads may be analyzed\nstatically or dynamically (respectively). This package uses such analysis\nto limit the number of steps the program may take. This is useful for EDSLs\nwith untrusted input, or in general when you want to guarantee termination\nby cutting off a program.\n\nNote that this package does not avoid infinite loops in bottom values. Use\nthe \"System.Timeout\" module for that instead.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."free" or ((hsPkgs.pkgs-errors).buildDepError "free"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }