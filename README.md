# 📣 Available Service Discord Notifications (ESX/QBCore)

**Available Service Discord Notifications** is a lightweight FiveM script that lets players announce they’re **on duty / available** by sending a message to a Discord channel via **webhooks**.

It supports **ESX and QBCore**, per-job setups, cooldowns to avoid spam, multiple notification systems, and a dev mode for safe testing.

---

## ✨ Features

- ✅ **ESX + QBCore compatible**
- 💬 **Direct ESX/QBCore dialog support** (confirm before sending the webhook)
- 👮 **Multiple job configurations**
  - Per job: webhook URL, command name, message template, bot username, bot avatar, etc.
- ⏳ **Per-job cooldown system**
  - Prevents repeated notifications within a configured time window
- 🔔 **Customizable in-game notifications**
  - `default`, `okokNotify`, `origen_notify`, or `custom`
- 🧪 **Dev Mode**
  - Redirect all webhooks to a single “general/dev” Discord webhook while testing
- 🐛 **Debug Mode**
  - Prints extra info in console for troubleshooting
- 🌍 **Locales support**
  - Add translations easily from the `locales/` folder

---

## 🔗 Dependencies

- **One framework required:**
  - ESX **or** QBCore
- *(Optional)* Notification resources (only if selected in config):
  - `okokNotify`
  - `origen_notify`

---

## ⚙️ Installation

### A) Manual
1. Download the resource
2. Extract it into your `resources` folder
3. Configure `config.lua`
4. Add it to your `server.cfg`

### server.cfg
```cfg
ensure plenix-available-service-discord-notifications
```

> ✅ Make sure your framework (ESX/QBCore) is started before this resource.

---

## 🛠️ Configuration

All settings are inside **`config.lua`**.

### Job configuration
Each job can have its own:
- Command (example: `/available_police`)
- Discord webhook URL
- Webhook identity (bot username + avatar)
- Message template/content
- Cooldown time (per job)

### Global configuration
- Notification system (`default`, `okokNotify`, `origen_notify`, `custom`)
- Debug mode (extra console logs)
- Dev mode (force all job webhooks to a single Discord webhook)

---

## 🕹️ Usage

Each configured job gets its own command.

Example:
```txt
/available_police
```

When executed by a player **with the correct job**, the script will:
1. Show a confirmation dialog (ESX/QBCore menu dialog)
2. Send the webhook message to the configured Discord channel
3. Trigger an in-game notification
4. Start the cooldown timer for that job

---

## 🔔 Notification Systems

Select the one you use in `config.lua`:

- **default**: Framework native notifications (ESX/QBCore)
- **okokNotify**: Uses the `okokNotify` resource
- **origen_notify**: Uses the `origen_notify` resource
- **custom**: Implement your own notification logic in the script

---

## 🧪 Dev Mode

When enabled, the script sends **all job notifications** to a single Discord webhook (your dev/general channel), so you don’t spam real channels while configuring.

---

## 🐛 Debug Mode

Enable debug to print extra logs (useful for):
- webhook errors
- cooldown triggers
- job/permission issues
- config validation

---

## 🌍 Locales / Translations

Add or edit language files here:
```txt
locales/
```

---

## 📄 License

This project is licensed under the **MIT License**.
