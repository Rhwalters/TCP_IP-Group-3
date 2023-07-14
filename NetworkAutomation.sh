import subprocess

def check_internet_connection():
    try:
            # Ping a well-known public DNS server (Google DNS)
	    subprocess.check_output(['ping', '-c', '3', '8.8.8.8'])
	    return True
	except subprocess.CalledProcessError:
	    return False

def check_dns_resolution():
	try:
					            
# Resolve the hostname of a well-known website (example.com)
	subprocess.check_output(['nslookup', 'example.com'])
	return True
except subprocess.CalledProcessError:
	return False

def check_website_access(url):
	try:
	# Access the provided URL
	subprocess.check_output(['curl', '-I', url])
	return True
except subprocess.CalledProcessError:
	return False

									
def main():
										print("Network Troubleshooting Script")
    print("=============================")

										# Check internet connection
    print("Checking internet connection...")
										if check_internet_connection():
	print("Internet connection: OK")
    else:
	print("Internet connection: Failed")
    
     # Check DNS resolution
    print("\nChecking DNS resolution...")
    if check_dns_resolution():
        print("DNS resolution: OK")
    else:
        print("DNS resolution: Failed")


																						 
main()
