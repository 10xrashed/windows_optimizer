# Enhanced Windows 10/11 Performance Optimizer

A comprehensive batch script designed to optimize Windows 10/11 system performance through automated cleaning, tweaking, and optimization procedures.

## ⚠️ Important Notice

**This script requires Administrator privileges to function properly.** Always run as Administrator and create a system restore point before using.

## Features

### 🧹 System Cleaning
- **Quick Clean**: Essential cleanup of temporary files, browser caches, and recent files
- **Deep Clean**: Comprehensive cleaning including:
  - Temporary files and prefetch data
  - GPU caches (NVIDIA, AMD)
  - Browser data and profiles
  - Windows error reports and logs
  - Memory dumps and old installation files
  - Thumbnail and icon caches

### ⚡ Performance Optimization
- **Memory & CPU Optimization**: Virtual memory tuning, service optimization, CPU scheduling
- **Network Performance Boost**: Bandwidth throttling removal, TCP optimization, DNS optimization
- **Visual Effects Optimization**: Disables resource-intensive visual effects for better performance
- **Registry Performance Tweaks**: File system cache optimization, NTFS performance tuning

### 🔧 Advanced Features
- **Complete Optimization Suite**: Runs all optimization modules in sequence
- **System Health Check**: SFC scan, disk health check, malware scan
- **System Status Monitor**: Real-time performance metrics and configuration status
- **Settings Restoration**: Restore all optimizations back to Windows defaults

## Usage

1. **Download** the `windows_optimizer.bat` file
2. **Right-click** and select "Run as Administrator"
3. **Choose** from the menu options (1-11):
   - `1` - System Deep Clean
   - `2` - Quick System Clean  
   - `3` - Performance Optimization Suite (Advanced)
   - `4` - Memory & CPU Optimization
   - `5` - Network Performance Boost
   - `6` - Visual Effects Optimization
   - `7` - Registry Performance Tweaks
   - `8` - Restore All Settings to Default
   - `9` - System Health Check
   - `10` - View Current System Status
   - `11` - Exit

## What Gets Optimized

### Services Modified
- **SysMain (Superfetch)**: Disabled for faster boot times
- **Windows Search**: Disabled for reduced CPU usage
- **Themes**: Disabled for performance mode

### Registry Changes
- CPU scheduling optimization
- Virtual memory management
- Network throttling removal
- Visual effects disabled
- File system performance tweaks

### Network Optimizations
- TCP auto-tuning enabled
- Nagle's algorithm disabled
- DNS servers set to Google DNS (8.8.8.8, 8.8.4.4)
- RSS and Chimney offloading enabled

## System Requirements

- Windows 10 or Windows 11
- Administrator privileges
- Minimum 4GB RAM recommended
- At least 1GB free disk space

## Safety Features

- **Confirmation prompts** for major changes
- **Restore functionality** to revert all optimizations
- **System health checks** to verify integrity
- **Automatic backup** of critical settings

## Expected Results

- **Boot time**: 20-40% faster startup
- **Memory usage**: 10-30% reduction in RAM usage
- **Disk space**: 2-10GB+ freed up
- **Network**: Improved latency and throughput
- **Responsiveness**: Smoother overall system performance

## Recommendations

### Before Running
1. Create a system restore point
2. Close all running applications
3. Ensure stable power supply
4. Back up important data

### After Running
1. Restart your computer for full effect
2. Monitor system stability for 24-48 hours
3. Use "System Status" option to verify optimizations

## Troubleshooting

If you experience issues after optimization:

1. Use option `8` to restore all settings to default
2. Run option `9` for system health check
3. Create a new user account if profile corruption occurs
4. Use Windows System Restore if problems persist

## Compatibility

- ✅ Windows 10 (all versions)
- ✅ Windows 11 (all versions)
- ✅ Both 32-bit and 64-bit systems
- ✅ Home, Pro, and Enterprise editions

## Author

Created by **10xRashed** - Enhanced Windows Performance Optimizer

## Disclaimer

This script modifies system settings and registry entries. While designed to be safe, use at your own risk. The author is not responsible for any system damage or data loss. Always backup your system before making changes.

## License

This project is licensed under the MIT License.

This script is provided as-is for educational and optimization purposes. Redistribution and modification are permitted with proper attribution.
