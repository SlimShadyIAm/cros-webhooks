# r/ChromeOS Discord Embed Webhook Files

## Info
These are the files we use to post embeds using webhooks in the [ChromeOS Discord Server](https://discord.gg/chromeos). Here's an example:

![exmaple webhook image](https://slim.ovh/SDgqfQ0U.png)

## How to post them
1. Download the [Postman web app](https://www.getpostman.com/downloads/) for your operating system
2. Install it and sign in.
3. You'll see a modal pop up with options like this:
![postman modal](https://slim.ovh/D0O326-v.png) 
just hit the "x" icon to close out of this.
4. At the top you should see a "+" icon to create a new request. Click on that. 
![+ icon](https://slim.ovh/-u_1Ejta.png) 
5. Change the request type from GET to POST, and insert the URL of the webhook in the text box next to it. (You can get the URL for an existing webhook by going to the channel settings > Webhooks > Edit > Webhook URL, or if you want you can create a new webhook in the same menu)
![POST and webhook URL example](https://slim.ovh/G0EAlBVf.png)
6. Go into the "headers" subsection. Add a new key "Content-Type" and set the value to "application/json"
![headers](https://slim.ovh/IsP2EBqr.png)
7. In the "body" subsection, set the type to "raw" and then in the large text box insert the JSON you would like to send. Note that this format needs to comply by the [Discord API](https://discordapp.com/developers/docs/resources/webhook) conventions for webhooks. 
![body example](https://slim.ovh/gffsnGC4.png)
8. When you're ready, hit the big blue "Send" and if all went well, it should appear in the channel you created the webhook for. If not, you should see an error response saying what went wrong.


## Creating new JSONs for webhooks
Where possible, just take example from some of the existting JSON files. But if there's something you don't see that you'd like to try to do, use the [Discord API](https://discordapp.com/developers/docs/resources/webhook) documentation to figure out how to write it

## Previewing your embeds
You can preview your embed in a test server by using a webhook URL from a channel where you want to send it, or alternatively you can use the [Discord embed visualiser tool](https://leovoel.github.io/embed-visualizer/), which updates in real time and therfore less annoying to work with. Note that if you use this you'll have to reformat your JSON *slightly*, in that you just want to copy a single embed object over from the array "embeds", as this preview tool uses the bot embed format rather than webhook format.
