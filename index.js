const core = require("@actions/core")
const github = require("@actions/github")

function run() {
    return new Promise(async (resolve, reject) => {
        const repository = core.getInput("repository")
        const head_ref = core.getInput("head_ref")
        const base_ref = core.getInput("head_ref")
        const exclude_regrexes = core.getInput("exclude-regrexes")
        let result = 1;
        try {
            result = await exec("/app/scripts/entrypoint.sh", [repository, head_ref, base_ref, exclude_regrexes]);
            if (result !== 0) {
                throw new Error(`unknown error ${result}`);
            }
        } catch (err) {
            core.setFailed(err.message);
        }
    })
}

run();
