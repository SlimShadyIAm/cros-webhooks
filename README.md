# r/ChromeOS Discord Embed Webhook Files

## Info
These are the files we use to post embeds using webhooks in the [ChromeOS Discord Server](https://discord.gg/chromeos). Here's an example:

See the "publish.sh" script in the "meet the team" folder for an example of how to use webhooks.

This script assumes you have an environment variable called "WEBHOOK_URL" defined with the full URL
for the webhook that points to the target channel.

## Creating new JSONs for webhooks
Where possible, just take example from some of the existting JSON files. But if there's something you don't see that you'd like to try to do, use the [Discord API](https://discordapp.com/developers/docs/resources/webhook) documentation to figure out how to write it

## Previewing your embeds
You can preview your embed in a test server by using a webhook URL from a channel where you want to send it, or alternatively you can use the [Discord embed visualiser tool](https://leovoel.github.io/embed-visualizer/), which updates in real time and therfore less annoying to work with. Note that if you use this you'll have to reformat your JSON *slightly*, in that you just want to copy a single embed object over from the array "embeds", as this preview tool uses the bot embed format rather than webhook format.
