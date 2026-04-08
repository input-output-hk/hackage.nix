{
  "1.0" = {
    sha256 = "421e1a9bf8de1dfd467a5fcee115fd0ea5dfda5242865d9e5af695ab9007658e";
    revisions = {
      r0 = {
        nix = import ../hackage/variant-1.0-r0-a3c819560424f59285a09f3ebd762f3a328163d109b5da55c4c54b6626f58c97.nix;
        revNum = 0;
        sha256 = "a3c819560424f59285a09f3ebd762f3a328163d109b5da55c4c54b6626f58c97";
      };
      r1 = {
        nix = import ../hackage/variant-1.0-r1-db77c513f7c61fa83d146973fc04044f2b34399db6c5c9d91701b9c375a08abd.nix;
        revNum = 1;
        sha256 = "db77c513f7c61fa83d146973fc04044f2b34399db6c5c9d91701b9c375a08abd";
      };
      default = "r1";
    };
  };
  "1.0.1" = {
    sha256 = "fa2b7ac9907fb0d671247c0ddcd0f3f0881a193532b9642db8f00a4423086c30";
    revisions = {
      r0 = {
        nix = import ../hackage/variant-1.0.1-r0-97364d20e13ad92e02bb45e78876087ffb3b2979f39a82cadb10df1b3a920268.nix;
        revNum = 0;
        sha256 = "97364d20e13ad92e02bb45e78876087ffb3b2979f39a82cadb10df1b3a920268";
      };
      default = "r0";
    };
  };
  "1.0.2" = {
    sha256 = "aff35c316b317b3d96d3e7e6c1b0ccda0897e516533c85e477cb7b8ade7bdca2";
    revisions = {
      r0 = {
        nix = import ../hackage/variant-1.0.2-r0-3855c680f272d8db2f3741b384cc23a8fbcf9d2d101db02a434672f6deeea0f7.nix;
        revNum = 0;
        sha256 = "3855c680f272d8db2f3741b384cc23a8fbcf9d2d101db02a434672f6deeea0f7";
      };
      default = "r0";
    };
  };
}