{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "Focus"; version = "0.1.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "nate@natesoares.com";
      author = "Nate Soares";
      homepage = "";
      url = "";
      synopsis = "Tools for focusing in on locations within numbers";
      description = "Focuses are lists of numbers where longer lists are treated as\n'focuses' on their parent lists. As such, `Focus []` is\nconsidered \"unfocused\" (it is EQ to all focuses), `Focus [1, 1]`\nis EQ to `Focus [1, 1, 3]` because their roots are equal, and so\non. This isn't useful for testing true equality, but it is quite\nuseful for traversing and pruning indexed rose trees from one\nlocus to another.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.MissingH) (hsPkgs.split) ];
        };
      };
    }