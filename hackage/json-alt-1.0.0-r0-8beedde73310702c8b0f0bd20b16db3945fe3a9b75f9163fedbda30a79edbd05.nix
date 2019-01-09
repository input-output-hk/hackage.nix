{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "json-alt"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright by Michal J. Gajda '2014-'2018";
      maintainer = "simons@cryp.to\nmjgajda@gmail.com";
      author = "Michal J. Gajda";
      homepage = "https://github.com/mgajda/json-autotype";
      url = "";
      synopsis = "Union 'alternative' or Either that has untagged JSON encoding.";
      description = "Parsing JSON with Aeson often requires decoding fields\nthat have more than one Haskell type.\n\nSo we have:\n```\ndata a :|: b = AltLeft a\n| AltLeft b\nprintIt = print . (fromJSON :: ByteString -> Int :|: Bool)\nmain = do\nprintIt \"1\"    -- AltLeft 1\nprintIt \"true\" -- AltRight True\nprintIt \"null\" -- errors!\n```\nTo generate types for larger JSON documents,\nyou might use `json-autotype`.\n\nThis is separate package so that users\ndo not have to keep `json-autotype` as runtime\ndependency.\n\nSee <https://github.com/mgajda/json-autotype>";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.aeson) ]; };
      };
    }