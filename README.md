# makera-z1-gcode-development
Repository dedicated to Makera Z1 G-code development, including probing cycle safety guidance.

## Context / Why this repo exists

I'm currently running a Linux PC (Linux Mint), and I haven't been able to get Makera Studio working under Wine without crashes.

Because the 3D probing cycles are built into the Makera software, I cannot use them directly right now.

Unless I write the G-code manually.

This is why I decided to share probing routines here, along with any other features we can generate using G-code.

## Project goals

- Share practical probing routines for Makera Z1
- Document safety-focused probing approaches
- Collect reusable G-code-based features that don't depend on Makera Studio

## Notes

If you run Makera Studio successfully on Linux (Wine/Proton/VM), feel free to share your setup and tips.
# Makera Z1 G-code Development

## ⚠️ Disclaimer / Safety Warning

This repository includes G-code that may use probing cycles.  
**Use these files at your own risk.**

Probing routines can cause unexpected machine movement.  
You must be very careful before running any code on your Makera Z1.

Before use, always:

- Read all documentation and notes in this repository
- Review and understand the full G-code before execution
- Verify work offsets, tool length, and probe settings
- Test in a safe way (dry run / simulation when possible)
- Keep emergency stop access ready at all times

The authors and contributors are not responsible for damage, injury, or loss resulting from the use of these files.
