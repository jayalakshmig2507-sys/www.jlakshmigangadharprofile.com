export default function Portfolio() {
  const skills = [
    {
      title: 'SQL Analytics',
      level: '92%',
      icon: '🗄️',
      description: 'Advanced SQL queries, reporting & dashboards'
    },
    {
      title: 'Salesforce (SFDC)',
      level: '95%',
      icon: '☁️',
      description: 'CRM management, workflows & opportunity tracking'
    },
    {
      title: 'Power BI',
      level: '88%',
      icon: '📊',
      description: 'Interactive dashboard creation & business insights'
    },
    {
      title: 'Excel Reporting',
      level: '90%',
      icon: '📈',
      description: 'Advanced reports, VLOOKUP & automation'
    }
  ];

  const irelandExperience = [
    {
      role: 'MSc Student & Networking Professional',
      duration: '2025 - Present',
      details:
        'Currently based in Dublin, Ireland focusing on professional networking, analytics learning, and career growth in Sales Operations and Data Analytics.'
    },
    {
      role: 'Business & Analytics Projects',
      duration: 'Ireland Experience',
      details:
        'Worked on sustainability, dashboard creation, and business analysis projects while studying in Ireland.'
    }
  ];

  const indiaExperience = [
    {
      role: 'Sales Operations Analyst',
      duration: 'India Experience',
      details:
        'Handled CRM management, sales cadence reporting, opportunity management, dashboards, and process improvement initiatives.'
    },
    {
      role: 'Business & Data Analyst',
      duration: 'Professional Experience',
      details:
        'Created analytical reports, managed data cleanup, business insights, Salesforce support, and operational reporting.'
    }
  ];

  const education = [
    {
      degree: 'MSc',
      place: 'Ireland',
      details: 'Currently pursuing Master’s degree focused on business and analytics.'
    },
    {
      degree: 'MBA Executive',
      place: 'Christ University',
      details: 'Specialized in innovation, business management & sustainability.'
    }
  ];

  return (
    <div className="min-h-screen bg-[#0f172a] text-white overflow-hidden">
      {/* Main Layout */}
      <div className="grid lg:grid-cols-[350px_1fr] min-h-screen">

        {/* Sidebar */}
        <div className="bg-[#111827] border-r border-gray-800 p-8 sticky top-0 h-screen overflow-y-auto">
          <div className="flex flex-col items-center text-center">
            <img
              src="https://i.postimg.cc/wyWL587j/be84ff28.jpg"
              alt="Jaylakshmi"
              className="w-52 h-52 rounded-3xl object-cover border-4 border-indigo-500 shadow-2xl"
            />

            <h1 className="text-3xl font-bold mt-6">Jaylakshmi</h1>

            <p className="text-indigo-400 mt-2 font-semibold">
              Sales Operations | Business Analyst | Data Analyst
            </p>

            <div className="mt-8 bg-[#1e293b] rounded-3xl p-6 text-left shadow-xl w-full">
              <h2 className="text-xl font-bold mb-4 text-indigo-400">
                Professional Summary
              </h2>

              <p className="text-gray-300 leading-relaxed text-sm">
                Ambitious analytics and sales operations professional currently
                based in Ireland with experience in Salesforce, SQL, reporting,
                dashboard creation, and business process optimization.
              </p>
            </div>

            {/* Education */}
            <div className="mt-6 bg-[#1e293b] rounded-3xl p-6 w-full shadow-xl">
              <h2 className="text-xl font-bold mb-5 text-indigo-400 text-left">
                Education
              </h2>

              <div className="space-y-5">
                {education.map((item, index) => (
                  <div
                    key={index}
                    className="bg-[#0f172a] p-4 rounded-2xl border border-gray-700 text-left"
                  >
                    <h3 className="font-bold text-lg">{item.degree}</h3>
                    <p className="text-indigo-300 text-sm mt-1">
                      {item.place}
                    </p>
                    <p className="text-gray-400 text-sm mt-2 leading-relaxed">
                      {item.details}
                    </p>
                  </div>
                ))}
              </div>
            </div>
          </div>
        </div>

        {/* Main Dashboard */}
        <div className="p-8 lg:p-12 bg-gradient-to-br from-[#0f172a] to-[#1e293b] overflow-y-auto">

          {/* Skills Dashboard */}
          <section>
            <div className="flex items-center justify-between mb-8">
              <div>
                <h2 className="text-4xl font-bold">Skills Dashboard</h2>
                <p className="text-gray-400 mt-2">
                  Analytics • CRM • Sales Operations • Reporting
                </p>
              </div>
            </div>

            <div className="grid md:grid-cols-2 xl:grid-cols-4 gap-6">
              {skills.map((skill, index) => (
                <div
                  key={index}
                  className="bg-[#111827] rounded-3xl p-6 border border-gray-800 shadow-2xl hover:scale-105 transition duration-300"
                >
                  <div className="flex justify-between items-center mb-4">
                    <span className="text-4xl">{skill.icon}</span>
                    <span className="text-green-400 font-bold text-lg">
                      {skill.level}
                    </span>
                  </div>

                  <h3 className="text-xl font-bold">{skill.title}</h3>

                  <p className="text-gray-400 text-sm mt-2 leading-relaxed">
                    {skill.description}
                  </p>

                  <div className="w-full bg-gray-700 rounded-full h-3 mt-6 overflow-hidden">
                    <div
                      className="bg-gradient-to-r from-indigo-500 to-cyan-400 h-3 rounded-full"
                      style={{ width: skill.level }}
                    />
                  </div>
                </div>
              ))}
            </div>
          </section>

          {/* Experience Section */}
          <section className="mt-16">
            <h2 className="text-4xl font-bold mb-10">Professional Experience</h2>

            <div className="grid lg:grid-cols-2 gap-8">

              {/* Ireland */}
              <div className="bg-[#111827] rounded-3xl p-8 border border-gray-800 shadow-2xl">
                <div className="flex items-center gap-3 mb-8">
                  <div className="w-4 h-4 rounded-full bg-green-400" />
                  <h3 className="text-3xl font-bold text-green-400">
                    Ireland Experience
                  </h3>
                </div>

                <div className="space-y-6">
                  {irelandExperience.map((exp, index) => (
                    <div
                      key={index}
                      className="bg-[#1e293b] rounded-2xl p-6 border border-gray-700"
                    >
                      <h4 className="text-xl font-bold">{exp.role}</h4>
                      <p className="text-green-300 text-sm mt-2">
                        {exp.duration}
                      </p>
                      <p className="text-gray-400 mt-4 leading-relaxed text-sm">
                        {exp.details}
                      </p>
                    </div>
                  ))}
                </div>
              </div>

              {/* India */}
              <div className="bg-[#111827] rounded-3xl p-8 border border-gray-800 shadow-2xl">
                <div className="flex items-center gap-3 mb-8">
                  <div className="w-4 h-4 rounded-full bg-orange-400" />
                  <h3 className="text-3xl font-bold text-orange-400">
                    India Experience
                  </h3>
                </div>

                <div className="space-y-6">
                  {indiaExperience.map((exp, index) => (
                    <div
                      key={index}
                      className="bg-[#1e293b] rounded-2xl p-6 border border-gray-700"
                    >
                      <h4 className="text-xl font-bold">{exp.role}</h4>
                      <p className="text-orange-300 text-sm mt-2">
                        {exp.duration}
                      </p>
                      <p className="text-gray-400 mt-4 leading-relaxed text-sm">
                        {exp.details}
                      </p>
                    </div>
                  ))}
                </div>
              </div>
            </div>
          </section>

          {/* Dashboard Analytics Cards */}
          <section className="mt-16">
            <h2 className="text-4xl font-bold mb-10">Analytics Overview</h2>

            <div className="grid md:grid-cols-3 gap-6">
              <div className="bg-gradient-to-r from-indigo-600 to-purple-600 rounded-3xl p-8 shadow-2xl">
                <h3 className="text-lg font-semibold opacity-80">CRM Expertise</h3>
                <p className="text-5xl font-bold mt-4">SFDC</p>
                <p className="mt-4 opacity-90 text-sm">
                  Salesforce administration, reporting & workflows.
                </p>
              </div>

              <div className="bg-gradient-to-r from-cyan-600 to-blue-600 rounded-3xl p-8 shadow-2xl">
                <h3 className="text-lg font-semibold opacity-80">SQL Reporting</h3>
                <p className="text-5xl font-bold mt-4">SQL</p>
                <p className="mt-4 opacity-90 text-sm">
                  Dashboard queries, analytics & operational reports.
                </p>
              </div>

              <div className="bg-gradient-to-r from-emerald-600 to-green-600 rounded-3xl p-8 shadow-2xl">
                <h3 className="text-lg font-semibold opacity-80">Business Insights</h3>
                <p className="text-5xl font-bold mt-4">BI</p>
                <p className="mt-4 opacity-90 text-sm">
                  KPI tracking, data analysis & performance dashboards.
                </p>
              </div>
            </div>
          </section>
        </div>
      </div>
    </div>
  );
}

